.class final Lcom/yelp/android/ui/widgets/t;
.super Landroid/widget/BaseAdapter;
.source "QuantityDropDownView.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(ILandroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 171
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/t;->a:I

    .line 172
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/t;->b:I

    .line 173
    iput p1, p0, Lcom/yelp/android/ui/widgets/t;->c:I

    .line 174
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/yelp/android/ui/widgets/t;->a:I

    add-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 177
    iget v0, p0, Lcom/yelp/android/ui/widgets/t;->b:I

    iget v1, p0, Lcom/yelp/android/ui/widgets/t;->a:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/widgets/t;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 185
    iget v0, p0, Lcom/yelp/android/ui/widgets/t;->a:I

    add-int/2addr v0, p1

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 189
    if-nez p2, :cond_1

    .line 190
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/widgets/t;->c:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 192
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 193
    if-nez v0, :cond_0

    move-object v0, v1

    .line 194
    check-cast v0, Landroid/widget/TextView;

    .line 196
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/widgets/t;->a(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-object v1

    :cond_1
    move-object v1, p2

    goto :goto_0
.end method
