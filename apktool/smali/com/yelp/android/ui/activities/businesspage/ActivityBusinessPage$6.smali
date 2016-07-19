.class Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;
.super Ljava/lang/Object;
.source "ActivityBusinessPage.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final synthetic b:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)V
    .locals 1

    .prologue
    .line 834
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;->b:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;->b:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 839
    const v0, 0x7f0f0270

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6$1;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 852
    const v0, 0x7f0f0266

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6$2;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 862
    const v0, 0x7f0f01a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6$3;-><init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 881
    return-void
.end method
