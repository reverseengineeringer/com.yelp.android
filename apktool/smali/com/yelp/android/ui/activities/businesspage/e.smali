.class Lcom/yelp/android/ui/activities/businesspage/e;
.super Ljava/lang/Object;
.source "ActivityBusinessPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;I)V
    .locals 0

    .prologue
    .line 534
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/e;->b:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    iput p2, p0, Lcom/yelp/android/ui/activities/businesspage/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/e;->b:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    iget v1, p0, Lcom/yelp/android/ui/activities/businesspage/e;->a:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->removeDialog(I)V

    .line 539
    return-void
.end method
