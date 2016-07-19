.class Lcom/yelp/android/ui/activities/tips/WriteTip$5;
.super Ljava/lang/Object;
.source "WriteTip.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/tips/WriteTip;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$5;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$5;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->removeDialog(I)V

    .line 364
    return-void
.end method
