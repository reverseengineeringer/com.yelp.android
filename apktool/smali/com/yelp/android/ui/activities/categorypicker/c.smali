.class public Lcom/yelp/android/ui/activities/categorypicker/c;
.super Lcom/yelp/android/ui/util/w;
.source "CategoryPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/categorypicker/c$a;,
        Lcom/yelp/android/ui/activities/categorypicker/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Category::",
        "Lcom/yelp/android/serializable/BizCategory;",
        ">",
        "Lcom/yelp/android/ui/util/w",
        "<TCategory;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/activities/categorypicker/c$a;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/categorypicker/c$a;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/yelp/android/ui/activities/categorypicker/c;->a:Lcom/yelp/android/ui/activities/categorypicker/c$a;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/categorypicker/c;)Lcom/yelp/android/ui/activities/categorypicker/c$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/c;->a:Lcom/yelp/android/ui/activities/categorypicker/c$a;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 30
    if-nez p2, :cond_0

    .line 31
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/yelp/android/co/a$h;->category_panel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 34
    new-instance v0, Lcom/yelp/android/ui/activities/categorypicker/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/yelp/android/ui/activities/categorypicker/c$b;-><init>(Landroid/view/View;Lcom/yelp/android/ui/activities/categorypicker/c$1;)V

    .line 35
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 40
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/categorypicker/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BizCategory;

    .line 41
    iget-object v2, v1, Lcom/yelp/android/ui/activities/categorypicker/c$b;->a:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/yelp/android/serializable/BizCategory;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/yelp/android/serializable/BizCategory;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yelp/android/ui/activities/categorypicker/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v1, v1, Lcom/yelp/android/ui/activities/categorypicker/c$b;->b:Landroid/view/View;

    new-instance v2, Lcom/yelp/android/ui/activities/categorypicker/c$1;

    invoke-direct {v2, p0, v0}, Lcom/yelp/android/ui/activities/categorypicker/c$1;-><init>(Lcom/yelp/android/ui/activities/categorypicker/c;Lcom/yelp/android/serializable/BizCategory;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-object p2

    .line 37
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/categorypicker/c$b;

    move-object v1, v0

    goto :goto_0
.end method
