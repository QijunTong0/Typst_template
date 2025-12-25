#import "@preview/touying:0.6.1": *
#import themes.university: *
#import "@preview/theorion:0.4.1": *
#import cosmos.fancy: *
#show: show-theorion
#show: university-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [Toward a mathematical theory of something],
    subtitle: [International Conference],
    author: [Tong Qijun],
    date: datetime.today(),
  ),
)
#set text(
  size: 22pt,
  //font: "Meiryo", //for japanese article
)
#title-slide()

== First

#lorem(20)
