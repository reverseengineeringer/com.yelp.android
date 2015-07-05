.class Lcom/yelp/android/ui/activities/tips/k;
.super Ljava/lang/Object;
.source "WriteTip.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/tips/WriteTip;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/k;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/k;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-static {v0, v1, p2}, Lcom/yelp/android/util/z;->a(Landroid/app/Activity;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;Z)V

    .line 172
    return-void
.end method
