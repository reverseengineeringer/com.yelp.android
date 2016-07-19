.class Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6$2;
.super Ljava/lang/Object;
.source "ActivityBusinessPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;->onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;)V
    .locals 0

    .prologue
    .line 854
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6$2;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 857
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 858
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6$2;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;->b:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Z)V

    .line 859
    return-void
.end method
