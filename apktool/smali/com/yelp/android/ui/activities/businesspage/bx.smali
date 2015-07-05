.class Lcom/yelp/android/ui/activities/businesspage/bx;
.super Landroid/support/v4/app/DialogFragment;
.source "BusinessPageFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 3336
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/bx;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 3338
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 3342
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/bx;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 3343
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070148

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/bx;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->v(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/s;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/ui/activities/businesspage/by;

    invoke-direct {v3, p0, v0}, Lcom/yelp/android/ui/activities/businesspage/by;-><init>(Lcom/yelp/android/ui/activities/businesspage/bx;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method
