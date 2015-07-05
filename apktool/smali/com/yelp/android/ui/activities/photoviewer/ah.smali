.class Lcom/yelp/android/ui/activities/photoviewer/ah;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/ah;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ah;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)Lcom/yelp/android/ui/activities/photoviewer/am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ah;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageFragment;)Lcom/yelp/android/ui/activities/photoviewer/am;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/photoviewer/am;->b()V

    .line 79
    :cond_0
    return-void
.end method
