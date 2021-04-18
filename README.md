# Nua Health
A Community Health App

## Inspiration
Our NUA Health App was inspired by the awareness to lack of health resources and struggle across numerous communities in the wake of COVID-19, political, and economic unsteadiness. Under resourced communities tend to have a lack of availability and even knowledge to the health care services around them, despite the need for these resources being critical. This has become apparent, especially in the last year, as people all across the nation grapple with confusion about what is best for their health and where they can access help. NUA Health aims to bring awareness, advice, and education in an easy to access, contained space. It reduces the confusion of endless rabbit holes in internet searches about the many health questions we all have. It invites those who are new to looking for care - whether due to recently moving to a new area, becoming independent, or simply seeking a type of care they're not well versed in - to resources within their reach. The NUA Health App aims to help those who need it most, in every community.

## What it does
The NUA Health App consists of five base tabs located at the bottom of the screen: **Home, In Your Area, Education, Live Chat, and Quiz.** 
The **Home** tab (represented by a home icon) contains your personal information and quick links to the other areas of the app.
The **In Your Area** tab (represented by a hospital icon) contains vital resources to your nearest clinic, free clinics in your area, and important hotlines that are available to you 24/7.
The **Education** tab (represented by a book icon) holds a wealth of knowledge about common ailments or conditions you may be experiencing or want to know more about. 
The **Live Chat** tab (represented by a chat box icon) is a direct link to a healthcare professional with whom you can discuss any concerns you may be having.
Finally, the **Quiz** tab (represented by a clipboard icon) is a general screening for those who feel unsure about seeking resources for a concern they may have. This screening is in no way intended to be equivalent to a medical consultation, and includes a disclaimer to call the emergency number if there is a dire need, but it can help advise those as to how urgently they should see a provider.

## How we built it
This accommodating health app was designed and prototyped in Figma, with front-end done in Flutter and Dart, and backend being connected to Google's Firebase. 

## Challenges we ran into
Many challenges were encountered in this speed run project. For one, Dart was a brand new language to half of the team. Another issue was the integration between Firebase Firestore and Google Cloud's  Dialogue Flow and Map Services. This was due to issues in dependencies on Dart/Flutter. This issue caused a change of plans in our two biggest features - the In Your Area tab, and the Live Chat tab - which were originally planned to be linked to Google Cloud Services (Map Services and Dialogue Flow, respectively). Although the work around of this issue was not too long to do, the troubleshooting for it, which ultimately could not be solved in a reasonable amount of time, left us pressed for time. Finally, a simple challenge was the integrating of images into the app. This took a long time for each image, and therefore it was decided to cut down the number of images and instead incorporate icons.

## Accomplishments that we're proud of
There were also many accomplishments along the way. For one, half the team learned a brand new language over the course of 36 hours! Another high point was the successful integration of hyperlinks, and the images we were able to incorporate.

## What we learned
The team learned a lot from these last few days including a better understanding of Google Cloud, what designs can be completed within a condensed timeframe, and which online sites give the best tutorials!

## What's next for NUA Health
Big things are in store for NUA Health. Moving forward - with hopefully no time constraints - NUA Health plans to implement the **Live Chat** in real time, add features in the **In Your Area** tab where a user can select what kind of health clinic (dental, physical, mental) they are searching for, and revamp the **Quiz Results** to include hyperlinks and bolded text that previously had to be cut due to time constraints. We hope to help communities across America discover the resources open to them!

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
