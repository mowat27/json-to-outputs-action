# JSON to Outputs Action

Prints the values of the top-level keys in a JSON document in the GitHub Actions [output format](https://help.github.com/en/actions/reference/workflow-commands-for-github-actions#setting-an-output-parameter).

Nested values will be returned as JSON.

# Example

```sh
JSON='{"x": 1, "y": [1,2,3], "z": {"a": "hello"}}'
docker run --rm -t -e JSON mowat27/json-to-outputs-action
```

Will produce:

```
::set-output name=x::1
::set-output name=y::[
  1,
  2,
  3
]
::set-output name=z::{
  "a": "hello"
}
```


