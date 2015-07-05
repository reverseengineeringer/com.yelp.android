.class Lcom/yelp/android/ui/activities/el;
.super Ljava/lang/Object;
.source "CheckInDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/CheckInDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/yelp/android/ui/activities/el;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 443
    iget-object v0, p0, Lcom/yelp/android/ui/activities/el;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/el;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/CheckInDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->startActivity(Landroid/content/Intent;)V

    .line 444
    iget-object v0, p0, Lcom/yelp/android/ui/activities/el;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->dismiss()V

    .line 445
    return-void
.end method
