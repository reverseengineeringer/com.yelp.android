.class final Lcom/yelp/android/ui/activities/addphoto/h;
.super Ljava/lang/Object;
.source "AddCaptionFragment.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/h;->a:Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;Lcom/yelp/android/ui/activities/addphoto/c;)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/addphoto/h;-><init>(Lcom/yelp/android/ui/activities/addphoto/AddCaptionFragment;)V

    return-void
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 4

    .prologue
    .line 255
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    move v0, p2

    .line 256
    :goto_0
    if-ge v0, v1, :cond_1

    .line 257
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 261
    :goto_1
    return v0

    .line 256
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 261
    goto :goto_1
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 3

    .prologue
    .line 266
    move v0, p2

    :goto_0
    if-lez v0, :cond_1

    .line 267
    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 271
    :goto_1
    return v0

    .line 266
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 271
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/16 v1, 0x20

    .line 276
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 277
    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    .line 278
    invoke-static {p1}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 279
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 282
    :cond_0
    return-object p1
.end method
