.class Lcom/yelp/android/ui/activities/ep;
.super Ljava/lang/Object;
.source "CheckInDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/ce;

.field final synthetic b:Lcom/yelp/android/ui/activities/CheckInDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/CheckInDialog;Lcom/yelp/android/ui/util/ce;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ep;->b:Lcom/yelp/android/ui/activities/CheckInDialog;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/ep;->a:Lcom/yelp/android/ui/util/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 165
    if-nez p2, :cond_1

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ep;->b:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->b(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ep;->b:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-static {v0, v1, p2}, Lcom/yelp/android/util/z;->a(Landroid/app/Activity;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;Z)V

    .line 172
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ep;->a:Lcom/yelp/android/ui/util/ce;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ce;->a()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ep;->b:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->c(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ep;->b:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->b(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
