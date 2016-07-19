.class public final Lcom/yelp/android/ui/util/aj$c;
.super Ljava/lang/Object;
.source "SectionedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Clearable:",
        "Landroid/widget/BaseAdapter;",
        ":",
        "Lcom/yelp/android/ui/util/g;",
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
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    if-nez p2, :cond_0

    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot pass a null adapter to the SectionedBuilder constructor."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_0
    if-nez p1, :cond_1

    .line 179
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Cannot pass a null title to the SectionBuilder constructor."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1
    iput-object p1, p0, Lcom/yelp/android/ui/util/aj$c;->b:Ljava/lang/CharSequence;

    .line 183
    iput-object p2, p0, Lcom/yelp/android/ui/util/aj$c;->a:Landroid/widget/BaseAdapter;

    .line 184
    const v0, 0x1010208

    iput v0, p0, Lcom/yelp/android/ui/util/aj$c;->d:I

    .line 185
    return-void
.end method

.method public static a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Clearable:",
            "Landroid/widget/BaseAdapter;",
            ":",
            "Lcom/yelp/android/ui/util/g;",
            ">(TClearable;)",
            "Lcom/yelp/android/ui/util/aj$c",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Lcom/yelp/android/ui/util/aj$c;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1, p0}, Lcom/yelp/android/ui/util/aj$c;-><init>(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Clearable:",
            "Landroid/widget/BaseAdapter;",
            ":",
            "Lcom/yelp/android/ui/util/g;",
            ">(",
            "Ljava/lang/CharSequence;",
            "TClearable;)",
            "Lcom/yelp/android/ui/util/aj$c",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lcom/yelp/android/ui/util/aj$c;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/util/aj$c;-><init>(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    return-object v0
.end method

.method private c()[I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj$c;->c:[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/yelp/android/ui/util/aj$c;->c:[I

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj$c;->c:[I

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/util/aj$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/ui/util/aj$c",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    .line 198
    sget v0, Lcom/yelp/android/co/a$f;->content:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/aj$c;->b(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/yelp/android/ui/util/aj$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yelp/android/ui/util/aj$c",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    .line 193
    iput p1, p0, Lcom/yelp/android/ui/util/aj$c;->d:I

    .line 194
    return-object p0
.end method

.method public a(III)Lcom/yelp/android/ui/util/aj$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lcom/yelp/android/ui/util/aj$c",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    .line 207
    iput p1, p0, Lcom/yelp/android/ui/util/aj$c;->g:I

    .line 208
    iput p2, p0, Lcom/yelp/android/ui/util/aj$c;->h:I

    .line 209
    iput p3, p0, Lcom/yelp/android/ui/util/aj$c;->i:I

    .line 210
    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/yelp/android/ui/util/aj$c",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    .line 238
    iput-object p1, p0, Lcom/yelp/android/ui/util/aj$c;->f:Landroid/view/View;

    .line 239
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/yelp/android/ui/util/aj$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/yelp/android/ui/util/aj$c",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    .line 188
    iput-object p1, p0, Lcom/yelp/android/ui/util/aj$c;->b:Ljava/lang/CharSequence;

    .line 189
    return-object p0
.end method

.method public b()Lcom/yelp/android/ui/util/aj$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/ui/util/aj$b",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj$c;->a:Landroid/widget/BaseAdapter;

    .line 255
    iget v1, p0, Lcom/yelp/android/ui/util/aj$c;->g:I

    if-eqz v1, :cond_1

    .line 256
    instance-of v1, v0, Lcom/yelp/android/ui/util/w;

    if-eqz v1, :cond_0

    .line 258
    new-instance v1, Lcom/yelp/android/ui/activities/profile/e;

    check-cast v0, Lcom/yelp/android/ui/util/w;

    iget v2, p0, Lcom/yelp/android/ui/util/aj$c;->g:I

    iget v3, p0, Lcom/yelp/android/ui/util/aj$c;->h:I

    iget v4, p0, Lcom/yelp/android/ui/util/aj$c;->i:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/yelp/android/ui/activities/profile/e;-><init>(Lcom/yelp/android/ui/util/w;III)V

    .line 272
    :goto_0
    new-instance v0, Lcom/yelp/android/ui/util/aj$b;

    iget-object v2, p0, Lcom/yelp/android/ui/util/aj$c;->b:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/yelp/android/ui/util/aj$c;->c:[I

    iget v4, p0, Lcom/yelp/android/ui/util/aj$c;->d:I

    iget-object v5, p0, Lcom/yelp/android/ui/util/aj$c;->e:Landroid/view/View;

    iget-object v6, p0, Lcom/yelp/android/ui/util/aj$c;->f:Landroid/view/View;

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/util/aj$b;-><init>(Landroid/widget/BaseAdapter;Ljava/lang/CharSequence;[IILandroid/view/View;Landroid/view/View;)V

    return-object v0

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Section cannot be configured to be Spannable if the base adapter is not a %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/yelp/android/ui/util/w;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public b(I)Lcom/yelp/android/ui/util/aj$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yelp/android/ui/util/aj$c",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, p1, v0, v0}, Lcom/yelp/android/ui/util/aj$c;->a(III)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/view/View;)Lcom/yelp/android/ui/util/aj$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Lcom/yelp/android/ui/util/aj$c",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    .line 243
    iput-object p1, p0, Lcom/yelp/android/ui/util/aj$c;->e:Landroid/view/View;

    .line 244
    return-object p0
.end method

.method public c(I)Lcom/yelp/android/ui/util/aj$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/yelp/android/ui/util/aj$c",
            "<TClearable;>;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/yelp/android/ui/util/aj$c;->c()[I

    move-result-object v0

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 215
    return-object p0
.end method
