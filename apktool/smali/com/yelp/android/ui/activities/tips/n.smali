.class Lcom/yelp/android/ui/activities/tips/n;
.super Ljava/lang/Object;
.source "WriteTip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/tips/WriteTip;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/n;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/n;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->d(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/n;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->d(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/n;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    const/16 v1, 0x12d

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->showDialog(I)V

    goto :goto_0
.end method
