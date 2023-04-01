if (Test-Path(".\env")) {
    . ".\env\Scripts\Activate.ps1"
} else {
    python.exe -m venv env
    . ".\env\Scripts\Activate.ps1"
    pip.exe install -r requirements.txt
}
Start-Process "http://127.0.0.1:8000/"
Set-Location ".\src"
mkdocs.exe serve
