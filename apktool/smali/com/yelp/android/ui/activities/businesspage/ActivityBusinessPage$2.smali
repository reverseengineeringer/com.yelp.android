.class Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$2;
.super Ljava/lang/Object;
.source "ActivityBusinessPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$2;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$2;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    const/16 v1, 0x133

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->removeDialog(I)V

    .line 498
    return-void
.end method
