.class Lcom/yelp/android/cl/b$a;
.super Lcom/yelp/android/ui/util/au;
.source "ConversationMessagesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/cl/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 168
    const v0, 0x7f0f025a

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/util/au;-><init>(Landroid/view/View;I)V

    .line 169
    const v0, 0x7f0f0479

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/cl/b$a;->a:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f0f0360

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/cl/b$a;->b:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f0f04e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/cl/b$a;->c:Landroid/view/View;

    .line 172
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 164
    const v0, 0x7f030185

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/cl/b$a;)Landroid/view/View;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/cl/b$a;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/cl/b$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/cl/b$a;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/cl/b$a;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/cl/b$a;->a:Landroid/widget/TextView;

    return-object v0
.end method
