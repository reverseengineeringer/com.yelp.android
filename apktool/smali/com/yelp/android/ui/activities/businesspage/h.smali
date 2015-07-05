.class Lcom/yelp/android/ui/activities/businesspage/h;
.super Ljava/lang/Object;
.source "ActivityBusinessPage.java"

# interfaces
.implements Landroid/view/ViewStub$OnInflateListener;


# instance fields
.field final a:Landroid/content/Context;

.field final synthetic b:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)V
    .locals 1

    .prologue
    .line 819
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/h;->b:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 820
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/h;->b:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/h;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 824
    const v0, 0x7f0c0219

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/i;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/i;-><init>(Lcom/yelp/android/ui/activities/businesspage/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 833
    const v0, 0x7f0c021a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/j;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/j;-><init>(Lcom/yelp/android/ui/activities/businesspage/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 842
    const v0, 0x7f0c0176

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/businesspage/k;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/businesspage/k;-><init>(Lcom/yelp/android/ui/activities/businesspage/h;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 858
    return-void
.end method
