.class Lcom/yelp/android/cl/c$a;
.super Lcom/yelp/android/ui/util/au;
.source "ConversationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/cl/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 210
    const v0, 0x7f0f0484

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/util/au;-><init>(Landroid/view/View;I)V

    .line 212
    const v0, 0x7f0f0487

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/cl/c$a;->a:Landroid/widget/TextView;

    .line 213
    const v0, 0x7f0f0488

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/cl/c$a;->b:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f0f0489

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/cl/c$a;->c:Landroid/widget/TextView;

    .line 216
    const v0, 0x7f0f0485

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/cl/c$a;->d:Landroid/widget/TextView;

    .line 217
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 206
    const v0, 0x7f030159

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/cl/c$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/yelp/android/cl/c$a;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/cl/c$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/yelp/android/cl/c$a;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/cl/c$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/yelp/android/cl/c$a;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/cl/c$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/yelp/android/cl/c$a;->c:Landroid/widget/TextView;

    return-object v0
.end method
