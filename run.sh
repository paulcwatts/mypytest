rm -rf .mypy_cache/
docker run -v $(pwd):/app --rm mypytest mypy .
# docker run --rm mypytest mypy .