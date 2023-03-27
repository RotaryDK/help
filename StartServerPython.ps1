if (Test-Path(".\env")) {
    . ".\env\Scripts\Activate.ps1"
} else {
    python.exe -m venv env
    . ".\env\Scripts\Activate.ps1"
    pip.exe install -r requirements.txt
}
Set-Location ".\src"
mkdocs.exe serve
