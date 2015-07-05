.class Lcom/yelp/android/ui/activities/businesspage/c;
.super Ljava/lang/Object;
.source "ActivityBusinessPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/c;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/c;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    const/16 v1, 0x130

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->removeDialog(I)V

    .line 478
    return-void
.end method
