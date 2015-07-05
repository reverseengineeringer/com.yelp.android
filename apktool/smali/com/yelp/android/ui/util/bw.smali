.class public final Lcom/yelp/android/ui/util/bw;
.super Ljava/lang/Object;
.source "SectionedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Clearable:",
        "Landroid/widget/BaseAdapter;",
        ":",
        "Lcom/yelp/android/ui/util/j;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/BaseAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TClearable;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/CharSequence;

.field private c:[I

.field private d:I

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "TClearable;)V"
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    if-nez p2, :cond_0

    .line 160
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot pass a null adapter to the SectionedBuilder constructor."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_0
    if-nez p1, :cond_1

    .line 164
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot pass a null title to the SectionBuilder constructor."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_1
    iput-object p1, p0, Lcom/yelp/android/ui/util/bw;->b:Ljava/lang/CharSequence;

    .line 168
    iput-object p2, p0, Lcom/yelp/android/ui/util/bw;->a:Landroid/widget/BaseAdapter;

    .line 169
    const v0, 0x1010208

    iput v0, p0, Lcom/yelp/android/ui/util/bw;->d:I

    .line 170
    return-void
.end method

.method public static a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Clearable:",
            "Landroid/widget/BaseAdapter;",
            ":",
            "Lcom/yelp/android/ui/util/j;",
            ">(TClearable;)",
            "Lcom/yelp/android/ui/util/bw",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lcom/yelp/android/ui/util/bw;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, p0}, Lcom/yelp/android/ui/util/bw;-><init>(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Clearable:",
            "Landroid/widget/BaseAdapter;",
            ":",
            "Lcom/yelp/android/ui/util/j;",
            ">(",
            "Ljava/lang/CharSequence;",
            "TClearable;)",
            "Lcom/yelp/android/ui/util/bw",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Lcom/yelp/android/ui/util/bw;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/util/bw;-><init>(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    return-object v0
.end method

.method private b()[I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/util/bw;->c:[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/yelp/android/ui/util/bw;->c:[I

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/bw;->c:[I

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/util/bv;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/ui/util/bv",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/util/bw;->a:Landroid/widget/BaseAdapter;

    .line 242
    iget v1, p0, Lcom/yelp/android/ui/util/bw;->g:I

    if-eqz v1, :cond_1

    .line 243
    instance-of v1, v0, Lcom/yelp/android/ui/util/au;

    if-eqz v1, :cond_0

    .line 245
    new-instance v1, Lcom/yelp/android/ui/activities/profile/s;

    check-cast v0, Lcom/yelp/android/ui/util/au;

    iget v2, p0, Lcom/yelp/android/ui/util/bw;->g:I

    iget v3, p0, Lcom/yelp/android/ui/util/bw;->h:I

    iget v4, p0, Lcom/yelp/android/ui/util/bw;->i:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/yelp/android/ui/activities/profile/s;-><init>(Lcom/yelp/android/ui/util/au;III)V

    .line 254
    :goto_0
    new-instance v0, Lcom/yelp/android/ui/util/bv;

    iget-object v2, p0, Lcom/yelp/android/ui/util/bw;->b:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/yelp/android/ui/util/bw;->c:[I

    iget v4, p0, Lcom/yelp/android/ui/util/bw;->d:I

    iget-object v5, p0, Lcom/yelp/android/ui/util/bw;->e:Landroid/view/View;

    iget-object v6, p0, Lcom/yelp/android/ui/util/bw;->f:Landroid/view/View;

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/util/bv;-><init>(Landroid/widget/BaseAdapter;Ljava/lang/CharSequence;[IILandroid/view/View;Landroid/view/View;)V

    return-object v0

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Section cannot be configured to be Spannable if the base adapter is not a %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/yelp/android/ui/util/au;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public a(I)Lcom/yelp/android/ui/util/bw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yelp/android/ui/util/bw",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    .line 178
    iput p1, p0, Lcom/yelp/android/ui/util/bw;->d:I

    .line 179
    return-object p0
.end method

.method public a(III)Lcom/yelp/android/ui/util/bw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/yelp/android/ui/util/bw",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    .line 192
    iput p1, p0, Lcom/yelp/android/ui/util/bw;->g:I

    .line 193
    iput p2, p0, Lcom/yelp/android/ui/util/bw;->h:I

    .line 194
    iput p3, p0, Lcom/yelp/android/ui/util/bw;->i:I

    .line 195
    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/yelp/android/ui/util/bw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/yelp/android/ui/util/bw",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    .line 223
    iput-object p1, p0, Lcom/yelp/android/ui/util/bw;->f:Landroid/view/View;

    .line 224
    return-object p0
.end method

.method public b(I)Lcom/yelp/android/ui/util/bw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yelp/android/ui/util/bw",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0, p1, v0, v0}, Lcom/yelp/android/ui/util/bw;->a(III)Lcom/yelp/android/ui/util/bw;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/View;)Lcom/yelp/android/ui/util/bw;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/yelp/android/ui/util/bw",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    .line 228
    iput-object p1, p0, Lcom/yelp/android/ui/util/bw;->e:Landroid/view/View;

    .line 229
    return-object p0
.end method

.method public c(I)Lcom/yelp/android/ui/util/bw;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yelp/android/ui/util/bw",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    .line 199
    invoke-direct {p0}, Lcom/yelp/android/ui/util/bw;->b()[I

    move-result-object v0

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 200
    return-object p0
.end method
