FROM georgyturevich/win_healthcheck:win_flask_base

EXPOSE 5000
COPY . /app
WORKDIR /app

HEALTHCHECK --interval=30s --timeout=6s --retries=3 CMD powershell.exe -executionpolicy bypass -nologo -noprofile c:\app\healthcheck.ps1

ENTRYPOINT ["python"]
CMD ["app.py"]