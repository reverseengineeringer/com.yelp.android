.class Lcom/yelp/android/ui/activities/b;
.super Lcom/yelp/android/webimageview/ImageLoaderHandler;
.source "ActivityBadge.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityBadge;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityBadge;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/yelp/android/ui/activities/b;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-direct {p0, p2}, Lcom/yelp/android/webimageview/ImageLoaderHandler;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/b;->a:Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->a(Lcom/yelp/android/ui/activities/ActivityBadge;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    invoke-super {p0, p1}, Lcom/yelp/android/webimageview/ImageLoaderHandler;->handleMessage(Landroid/os/Message;)V

    .line 128
    return-void
.end method
