.class Lcom/yelp/android/ui/activities/cn;
.super Ljava/lang/Object;
.source "ActivityLogin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityLogin;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/yelp/android/ui/activities/cn;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cn;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->removeDialog(I)V

    .line 477
    return-void
.end method
