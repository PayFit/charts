# charts

PayFit's public Helm chart repository.

The released charts can be found at https://payfit.github.io/charts.

You can add the PayFit helm repository by running:

```bash
helm repo add payfit https://payfit.github.io/charts
```

To generate chart docs, run:
```bash
docker run -v ${PWD}:/work -w /work/charts jnorwood/helm-docs:v1.3.0  
```
