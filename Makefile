all:
	@echo "make check"
	@echo "make podman"
	@echo "make docker"

check:
	flake8 --max-line-length 512 --exclude venv,.eggs .

podman:
	podman build . -t localhost/my_django_template:latest

docker:
	docker build . -t localhost/my_django_template:latest
