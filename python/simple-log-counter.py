# simple-log-counter.py
# Purpose: Count keyword occurrences in a sample log file.
# Lab/sanitized example only.

from pathlib import Path

log_file = Path("sample-data/sample-auth.log")
keywords = ["Failed password", "Accepted password", "sudo"]

if not log_file.exists():
    print("Sample log file not found.")
    exit()

content = log_file.read_text(errors="ignore")

for keyword in keywords:
    print(f"{keyword}: {content.count(keyword)}")
