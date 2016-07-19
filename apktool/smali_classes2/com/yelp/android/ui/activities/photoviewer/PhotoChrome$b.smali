.class public Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;
.super Ljava/lang/Object;
.source "PhotoChrome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;)V
    .locals 0

    .prologue
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;->a:Ljava/lang/String;

    .line 570
    iput-object p2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    .line 571
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;->b:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;->a:Ljava/lang/String;

    return-object v0
.end method
