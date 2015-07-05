.class Lcom/yelp/android/ui/activities/eq;
.super Ljava/lang/Object;
.source "CheckInDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/CheckInDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/yelp/android/ui/activities/eq;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eq;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-static {v0, v1, p2}, Lcom/yelp/android/util/z;->a(Landroid/app/Activity;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;Z)V

    .line 180
    return-void
.end method
