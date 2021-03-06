.class public Lcom/yelp/android/ui/util/AnalyticsSpan;
.super Landroid/text/style/URLSpan;
.source "AnalyticsSpan.java"


# instance fields
.field private final a:Lcom/yelp/android/analytics/g;


# direct methods
.method public constructor <init>(Lcom/yelp/android/analytics/g;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    invoke-static {p2}, Lcom/yelp/android/ui/util/AnalyticsSpan;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/yelp/android/ui/util/AnalyticsSpan;->a:Lcom/yelp/android/analytics/g;

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 43
    new-instance v0, Lcom/yelp/android/analytics/g;

    const/4 v1, 0x0

    const-string/jumbo v2, "url"

    invoke-static {p2}, Lcom/yelp/android/ui/util/AnalyticsSpan;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/analytics/g;-><init>(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, v0, p2}, Lcom/yelp/android/ui/util/AnalyticsSpan;-><init>(Lcom/yelp/android/analytics/g;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static final a(Landroid/text/Spanned;Lcom/yelp/android/analytics/iris/a;)Landroid/text/Spannable;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 81
    instance-of v0, p0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/text/Spannable;

    move-object v1, v0

    .line 83
    :goto_0
    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v0

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {p0, v2, v0, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 84
    array-length v3, v0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 85
    aget-object v4, v0, v2

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 86
    aget-object v5, v0, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 87
    aget-object v6, v0, v2

    invoke-interface {p0, v6}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    .line 88
    aget-object v7, v0, v2

    invoke-interface {v1, v7}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 89
    new-instance v7, Lcom/yelp/android/ui/util/AnalyticsSpan;

    aget-object v8, v0, v2

    invoke-virtual {v8}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Lcom/yelp/android/ui/util/AnalyticsSpan;-><init>(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;)V

    invoke-interface {v1, v7, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 81
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v0

    goto :goto_0

    .line 91
    :cond_1
    return-object v1
.end method

.method private static final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    invoke-static {p0}, Lcom/yelp/android/util/StringUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 115
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Landroid/widget/TextView;Lcom/yelp/android/analytics/iris/a;)V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 105
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 106
    check-cast v0, Landroid/text/Spanned;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/util/AnalyticsSpan;->a(Landroid/text/Spanned;Lcom/yelp/android/analytics/iris/a;)Landroid/text/Spannable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/util/AnalyticsSpan;->a:Lcom/yelp/android/analytics/g;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/b;)V

    .line 66
    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    .line 67
    return-void
.end method
