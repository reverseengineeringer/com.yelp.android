.class Lcom/yelp/android/ui/activities/photoviewer/ag;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/widgets/ao;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/ag;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ag;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)Lcom/yelp/android/ui/activities/photoviewer/am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ag;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)Lcom/yelp/android/ui/activities/photoviewer/am;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/photoviewer/am;->b()V

    .line 67
    :cond_0
    return-void
.end method
