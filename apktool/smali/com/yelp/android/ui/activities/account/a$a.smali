.class public final Lcom/yelp/android/ui/activities/account/a$a;
.super Ljava/lang/Object;
.source "FormElementValidator.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/account/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/account/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-string/jumbo v0, "^[_\\.\\+0-9a-zA-Z-]+@([0-9a-zA-Z][0-9a-zA-Z-]*\\.)+[a-zA-Z]{2,4}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ui/activities/account/a$a;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/TextView;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 112
    :goto_0
    return v0

    .line 92
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    move v0, v1

    .line 94
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 97
    const/4 v0, 0x2

    new-array v4, v0, [C

    fill-array-data v4, :array_0

    array-length v5, v4

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_3

    aget-char v6, v4, v0

    .line 98
    if-ne v2, v6, :cond_2

    move v0, v1

    .line 99
    goto :goto_0

    .line 97
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v2, v1

    move v0, v1

    :goto_2
    if-ge v2, v5, :cond_5

    aget-char v6, v4, v2

    .line 104
    const/16 v7, 0x40

    if-ne v6, v7, :cond_4

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 103
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 108
    :cond_5
    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    move v0, v1

    .line 109
    goto :goto_0

    .line 111
    :cond_6
    sget-object v0, Lcom/yelp/android/ui/activities/account/a$a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0

    .line 97
    nop

    :array_0
    .array-data 2
        0x40s
        0x2es
    .end array-data
.end method
