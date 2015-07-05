.class Lcom/yelp/android/bb/g;
.super Lcom/yelp/android/ui/util/cv;
.source "ConversationMessagesAdapter.java"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 142
    const v0, 0x7f0c0246

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/util/cv;-><init>(Landroid/view/View;I)V

    .line 143
    const v0, 0x7f0c039a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/bb/g;->a:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0c02eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/bb/g;->b:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0c0403

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/bb/g;->c:Landroid/view/View;

    .line 146
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 138
    const v0, 0x7f030122

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/bb/g;)Landroid/view/View;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yelp/android/bb/g;->c:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/bb/g;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yelp/android/bb/g;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/bb/g;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yelp/android/bb/g;->a:Landroid/widget/TextView;

    return-object v0
.end method
