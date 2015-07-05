.class public Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;
.super Ljava/lang/Object;
.source "PhotoChrome.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;)V
    .locals 0

    .prologue
    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 572
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;->a:Ljava/lang/String;

    .line 573
    iput-object p2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    .line 574
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem$OptionsMenuType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$OptionsMenuItem;->a:Ljava/lang/String;

    return-object v0
.end method
