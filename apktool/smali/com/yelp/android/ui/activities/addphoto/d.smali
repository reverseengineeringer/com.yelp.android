.class Lcom/yelp/android/ui/activities/addphoto/d;
.super Ljava/lang/Object;
.source "AddCaptionFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/d;->a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/d;->a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-static {v0, v1, p2}, Lcom/yelp/android/util/z;->a(Landroid/app/Activity;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;Z)V

    .line 174
    return-void
.end method
