.class Lcom/yelp/android/ui/activities/categorypicker/a$a;
.super Ljava/lang/Object;
.source "BusinessCategorySuggestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/categorypicker/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget v0, Lcom/yelp/android/co/a$f;->business_category_suggest:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/a$a;->a:Landroid/widget/TextView;

    .line 66
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/categorypicker/a$1;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/categorypicker/a$a;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/categorypicker/a$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/a$a;->a:Landroid/widget/TextView;

    return-object v0
.end method
