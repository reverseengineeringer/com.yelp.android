.class Lcom/yelp/android/ui/activities/CheckInDialog$4;
.super Ljava/lang/Object;
.source "CheckInDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/CheckInDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/al;

.field final synthetic b:Lcom/yelp/android/ui/activities/CheckInDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/CheckInDialog;Lcom/yelp/android/ui/util/al;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/yelp/android/ui/activities/CheckInDialog$4;->b:Lcom/yelp/android/ui/activities/CheckInDialog;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/CheckInDialog$4;->a:Lcom/yelp/android/ui/util/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 170
    if-nez p2, :cond_1

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$4;->b:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->d(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$4;->b:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-static {v0, v1, p2}, Lcom/yelp/android/util/p;->a(Landroid/app/Activity;Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;Z)V

    .line 178
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$4;->a:Lcom/yelp/android/ui/util/al;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/al;->a()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog$4;->b:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->e(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$4;->b:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->d(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
