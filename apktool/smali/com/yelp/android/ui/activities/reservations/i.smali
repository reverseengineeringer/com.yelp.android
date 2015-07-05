.class Lcom/yelp/android/ui/activities/reservations/i;
.super Ljava/lang/Object;
.source "OpentableDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 37
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 38
    return-void
.end method
