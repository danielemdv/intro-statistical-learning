# Course notes

## Supervised learning

Supervised learning refers to machine learning problems where we have a data set in which the **right answers** are provided. This means we can train models with features and the right answers. The aim is to be able to generate a model that can predict the answers to data for which we do not have the answers yet.

### Regression

In supervised learning, **regression** refers to the problem of predicting a continuous variable. This means that the *answers* we want to predict are a continuous number with an infinte number of values (think of a number line). [e.g. Think of the housing price prediction.]

### Classification

In supervised learning, **classification** refers to the problem of predicting which *class* or *category* an observation belongs to. This means that the *answers* we want to predict are discrete values (which are sometimes represented by numbers but the numbers themselves don't matter!). A shorthand way of understanding this is that you can count the number of classes or categories there are (whereas you cannot count the number of house prices there could possibly be!). [e.g. Think of predicting which type of cancer a tumour can be. Not-cancer, type1-cancer, type2-cancer, etc].


## Unsupervised learning

We have a lot of data and we might not really know what we're looking for. Unsupervised learning algorithms can help us find structure present in data, which can help us understand fundamental facts about the data we might have not been aware of before.


## Model and cost function (Supervised)

### Model

The *training data set* is used by a *learning algorithm* which produces a *hypothesis (h)*.
*h* is a function which can be given features (x) to predict the target feature (y).

For univariate linear regression we can represent our hypothesis as the following model:

 $h_{\theta}(x) = \theta_0 + \theta_1x$
 
Where the thetas ($\theta$) are the part of the model that is adjusted by the learning algorithm.

### Cost Function

For univariate linear regression, we want to minimize the difference between our model (straight line) and the data at every given data point.

${minimize \atop \theta_{0} \theta_{1}}\frac{1}{2m}\sum_{i = 1}^m (h_{\theta}(x^{(i)}) - y^{(i)})^2$

So we can define our cost function J that takes into account both theta variables.

$J(\theta_{0},\theta_{1}) = \frac{1}{2m}\sum_{i = 1}^m (h_{\theta}(x^{(i)}) - y^{(i)})^2$

This is the (mean) squared error cost function and we want to minimize it in order to create the closest model to the data.

