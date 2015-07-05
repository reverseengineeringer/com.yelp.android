.class Lcom/yelp/android/ui/activities/tips/q;
.super Ljava/lang/Object;
.source "WriteTip.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/tips/WriteTip;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/q;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/q;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->i(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/ui/util/ImageInputHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/q;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    sget-object v2, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/app/Activity;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)V

    .line 552
    const/4 v0, 0x1

    return v0
.end method
