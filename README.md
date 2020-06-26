# JSON to Outputs Action

Applies a list of JMES expressions against a JSON document and echos each one 
as a GitHub Actions output. 

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


