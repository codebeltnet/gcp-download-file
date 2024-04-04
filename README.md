# GCP Download File

Downloads an object from a GCP Cloud Storage bucket. Authentication is done using [auth action](https://github.com/google-github-actions/auth) and the installation of `gcloud` CLI uses [setup-gcloud action](https://github.com/google-github-actions/setup-gcloud).

> This action is part of the Codebelt ecosystem and ensures a consistent way of: 
> 
> - Defining your CI/CD pipeline 
> - Structuring your repository
> - Keeping your codebase small and feasible
> - Writing clean and maintainable code
> - Deploying your code to different environments
> - Automating as much as possible
>
> A paved path to excel as a DevSecOps Engineer.

## Usage

To use this action in your GitHub repository, you can follow these steps:

```yaml
uses: codebeltnet/gcp-download-file@main
```

### Inputs

```yaml
with:
  # A service account key in JSON format.
  serviceAccountKey:
  # The name of the bucket containing the object you are downloading. 
  # For example, my-bucket. It will be prefixed with gs:// and suffixed with /.
  bucketName:
  # The name of the object you are downloading. 
  # For example, pets/dog.png.
  objectName:
  # The local path where you are saving your object.
  destination: '${{ github.workspace }}'
  # Whether to use the object cache or not.
  useObjectCache: 'true'
```

### Outputs

This action has no outputs.

## Examples

### Download an object from a GCP Cloud Storage bucket

```yaml
steps:
  - name: Download Signing-Key
    uses: codebeltnet/gcp-download-file@main
    with:
      serviceAccountKey: ${{ secrets.GCP_TOKEN }}
      bucketName: ${{ secrets.GCP_BUCKETNAME }}
      objectName: sharedkernel.snk
```

## Contributing to GCP Download File

Contributions are welcome! 
Feel free to submit issues, feature requests, or pull requests to help improve this action.

### License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
