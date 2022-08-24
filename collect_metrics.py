import json
import os
import sys
from datetime import datetime

from git import Repo


def main(args):
    """
    Collect some metrics and save to a json file
    """
    repo = Repo(args[3])
    sha_hash = repo.head.object.hexsha
    repo_name = repo.remotes.origin.url.split(".git")[0].split("/")[-1]
    branch_name = args[4]

    metrics_data = {
        "hash": f"{sha_hash}",
        "data": {
            "timestamp": f"{str(datetime.now().isoformat())}",
            "repo": f"{repo_name}",
            "branch": f"{branch_name}",
        },
    }
    save_doc(args[1], args[2], metrics_data)


def save_doc(metrics_path, collection, data):
    if os.path.exists(metrics_path):
        pass
    else:
        print("metrics directory does not exist, creating")
        os.mkdir(metrics_path)

    file_path = os.path.join(metrics_path, collection)
    with open(f"{file_path}.json", "w") as json_file:
        json_string = json.dumps(data, default=lambda s: str(s))
        json_file.write(json_string)


if __name__ == "__main__":
    main(sys.argv)
