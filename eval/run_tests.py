import json
import subprocess
from tqdm import tqdm
from multiprocessing import Pool, cpu_count
from glob import glob


def run_command(command):
    try:
        result = subprocess.run(
            command, shell=True, check=True, capture_output=True, text=True, timeout=20
        )
        return True, result.stdout
    except subprocess.CalledProcessError as e:
        return False, str(e.stderr) + str(e)

    except subprocess.TimeoutExpired as e:
        return False, f"Timeout expired: {e}"


compilation_level = "-O2"


def process_test(data):
    pred, file = data
    # if "82" not in file: return "success", file
    pred_path = file.replace("code.c", "pred.s")
    with open(pred_path, "w") as f:
        f.write(pred)
    # success, output = run_command(f"clang -arch arm64 -S {file} -o {pred_path} {compilation_level}")
    # if not success:
    # print(f"Failed to compile {file}: {output}")
    # return "Failed", file

    out_path = pred_path.replace(".s", ".o")
    success, output = run_command(
        f"clang -arch arm64 -c {pred_path} -o {out_path} {compilation_level}"
    )
    if not success:
        print(f"Failed to assemble {file}: {output}")
        return "Failed", file, output

    test_path = file.replace("code.c", "test.c")
    test_out_path = test_path.replace(".c", ".o")
    success, output = run_command(
        f"clang -arch arm64 -c {test_path} -o {test_out_path} {compilation_level}"
    )
    if not success:
        print(f"Failed to compile test for {file}: {output}")
        return "Failed", file, output

    linked_path = pred_path.replace(".s", "")
    success, output = run_command(
        f"clang -arch arm64 {out_path} {test_out_path} -o {linked_path} {compilation_level}"
    )
    if not success:
        print(f"Failed to link {file}: {output}")
        return "Failed", file, output

    success, output = run_command(f"./{linked_path}")
    if not success:
        print(f"Test failed for {file}: {output}")
        return "Failed", file, output
    return "success", file, output


def find_sample_by_name(filename, samples):
    for i, sample in enumerate(samples["files"]):
        if filename == sample:
            return {
                "gt": samples["gt"][i],
                "pred": samples["pred"][i],
                "ed": samples["ed"][i],
                "input": samples["input"][i],
            }


if __name__ == "__main__":
    results_path = "predictions/eval_ex13_armv5_O0.json"

    with open(results_path, "r") as f:
        data = json.load(f)

    ed = data["ed"]
    em = len([f for f in ed if f == 0])
    em_acc = (em / len(ed)) * 100
    print(f"Accuracy: {em_acc:.2f}%")
    print(f"Exact match: {len([f for f in ed if f == 0])}")
    print(f"30 CER: {len([f for f in ed if f <= 30])}")
    print(f"Edit distance: {round(sum(ed) / len(ed))}")
    exit()

    total_tests = len(data["pred"])
    test_data = list(zip(data["pred"], data["files"]))
    num_processes = cpu_count()

    failed, successful = 0, 0
    with Pool(num_processes) as pool:
        results = list(tqdm(pool.imap(process_test, test_data), total=total_tests))

    success_ed = []
    evaluated_files = []
    failed_files = []
    evaluation_data = []
    for result in results:
        result, file, output = result
        sample = find_sample_by_name(file, data)
        file = file.replace("eval/", "")
        is_success = result == "success"
        if is_success:
            successful += 1
        else:
            failed += 1
            failed_files.append(file)
        evaluation_data.append({
            "file": file,
            "ed": sample["ed"],
            "input": sample["input"],
            "pred": sample["pred"],
            "gt": sample["gt"],
            "success": is_success,
            "output": output,
        })
    print(failed_files)
    accuracy = (successful / total_tests) * 100
    print(
        f"Tests completed. Successful: {successful}, Failed: {failed}, Total: {total_tests}"
    )
    print(f"Accuracy: {accuracy:.2f}%")
    output_path = results_path.replace(".json", "_results.json")
    with open(output_path, "w") as f:
        json.dump(evaluation_data, f, indent=4)
