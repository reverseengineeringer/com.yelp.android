.class Lcom/yelp/android/ui/activities/en;
.super Ljava/lang/Object;
.source "CheckInDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/CheckInDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/yelp/android/ui/activities/en;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/yelp/android/ui/activities/en;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->dismiss()V

    .line 461
    return-void
.end method
