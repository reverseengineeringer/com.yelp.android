.class Lcom/yelp/android/ui/dialogs/FlagsDialog$a$b;
.super Ljava/lang/Object;
.source "FlagsDialog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/dialogs/FlagsDialog$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Locale;

.field private final b:Ljava/util/Locale;

.field private final c:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Ljava/util/Locale;Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p2, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$b;->a:Ljava/util/Locale;

    .line 234
    iput-object p1, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$b;->b:Ljava/util/Locale;

    .line 235
    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$b;->c:Ljava/text/Collator;

    .line 236
    return-void
.end method

.method private a(Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;)Z
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$b;->a:Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x0

    .line 261
    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->a:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$b;->a:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method private b(Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;)Z
    .locals 2

    .prologue
    .line 266
    iget-object v0, p1, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->a:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$b;->b:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 240
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$b;->a(Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v0

    .line 243
    :cond_1
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$b;->a(Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 244
    goto :goto_0

    .line 246
    :cond_2
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$b;->b(Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 249
    invoke-direct {p0, p2}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$b;->b(Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 250
    goto :goto_0

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$b;->c:Ljava/text/Collator;

    iget-object v1, p1, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->a:Ljava/util/Locale;

    iget-object v2, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$b;->b:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;->a:Ljava/util/Locale;

    iget-object v3, p0, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$b;->b:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 226
    check-cast p1, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;

    check-cast p2, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/dialogs/FlagsDialog$a$b;->a(Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;Lcom/yelp/android/ui/dialogs/FlagsDialog$a$a;)I

    move-result v0

    return v0
.end method
