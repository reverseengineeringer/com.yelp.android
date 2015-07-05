.class Lcom/yelp/android/ui/activities/df;
.super Ljava/lang/Object;
.source "ActivityPhotoFeedbackAlerts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/de;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/de;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/yelp/android/ui/activities/df;->a:Lcom/yelp/android/ui/activities/de;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/df;->a:Lcom/yelp/android/ui/activities/de;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/de;->a:Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Landroid/content/Context;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/yelp/android/ui/activities/df;->a:Lcom/yelp/android/ui/activities/de;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/de;->a:Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/ActivityPhotoFeedbackAlerts;->startActivity(Landroid/content/Intent;)V

    .line 117
    return-void
.end method
