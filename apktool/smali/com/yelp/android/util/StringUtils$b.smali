.class public final Lcom/yelp/android/util/StringUtils$b;
.super Ljava/lang/Object;
.source "StringUtils.java"

# interfaces
.implements Landroid/text/Html$TagHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/util/StringUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/util/StringUtils$b$a;
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 975
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 976
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/util/StringUtils$b;->a:I

    .line 977
    return-void
.end method


# virtual methods
.method public handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 981
    if-eqz p1, :cond_1

    const-string/jumbo v0, "mark"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 982
    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/util/StringUtils$b;->a:I

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 983
    :cond_1
    if-nez p1, :cond_0

    iget v0, p0, Lcom/yelp/android/util/StringUtils$b;->a:I

    if-eq v0, v4, :cond_0

    .line 984
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 985
    const-string/jumbo v1, "mark"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 986
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 987
    new-instance v1, Lcom/yelp/android/util/StringUtils$b$a;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/util/StringUtils$b$a;-><init>(Ljava/lang/String;Lcom/yelp/android/util/StringUtils$1;)V

    iget v0, p0, Lcom/yelp/android/util/StringUtils$b;->a:I

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result v2

    const/16 v3, 0x12

    invoke-interface {p3, v1, v0, v2, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 989
    iput v4, p0, Lcom/yelp/android/util/StringUtils$b;->a:I

    goto :goto_0
.end method
