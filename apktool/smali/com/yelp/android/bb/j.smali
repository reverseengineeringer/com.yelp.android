.class Lcom/yelp/android/bb/j;
.super Lcom/yelp/android/ui/util/cv;
.source "ConversationsAdapter.java"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 188
    const v0, 0x7f0c03a5

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/util/cv;-><init>(Landroid/view/View;I)V

    .line 190
    const v0, 0x7f0c03a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/bb/j;->a:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f0c03a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/bb/j;->b:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f0c03aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/bb/j;->c:Landroid/widget/TextView;

    .line 194
    const v0, 0x7f0c03a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/bb/j;->d:Landroid/widget/TextView;

    .line 195
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 184
    const v0, 0x7f0300fb

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/bb/j;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/yelp/android/bb/j;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/bb/j;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/yelp/android/bb/j;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/bb/j;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/yelp/android/bb/j;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/bb/j;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/yelp/android/bb/j;->c:Landroid/widget/TextView;

    return-object v0
.end method
