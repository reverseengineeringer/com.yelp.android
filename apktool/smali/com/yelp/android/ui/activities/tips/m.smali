.class Lcom/yelp/android/ui/activities/tips/m;
.super Ljava/lang/Object;
.source "WriteTip.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/tips/WriteTip;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/m;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 317
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/m;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    const v1, 0x7f0705fa

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->showLoadingDialog(I)V

    .line 318
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/m;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/bm;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/m;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/tips/WriteTip;->b(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/serializable/Tip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/tips/m;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/tips/WriteTip;->c(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/ui/activities/tips/r;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/bm;-><init>(Ljava/lang/String;Lcom/yelp/android/av/i;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Lcom/yelp/android/ui/activities/tips/WriteTip;Lcom/yelp/android/appdata/webrequests/ApiRequest;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 319
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/m;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->d(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 320
    return-void
.end method
