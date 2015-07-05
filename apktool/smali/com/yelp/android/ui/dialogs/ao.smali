.class public final Lcom/yelp/android/ui/dialogs/ao;
.super Lcom/yelp/android/ui/util/au;
.source "FlagsDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/ui/dialogs/ap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 148
    invoke-static {}, Lcom/yelp/android/ui/dialogs/ao;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/dialogs/ao;->a(Ljava/util/List;)V

    .line 149
    return-void
.end method

.method public static b()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/ui/dialogs/ap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    .line 153
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v2

    .line 154
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080011

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 155
    new-instance v4, Ljava/util/ArrayList;

    array-length v0, v3

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    array-length v5, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v3, v0

    .line 157
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "flag_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "drawable"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 159
    new-instance v8, Lcom/yelp/android/ui/dialogs/ap;

    new-instance v9, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v9, v7}, Lcom/yelp/android/ui/dialogs/ap;-><init>(Ljava/util/Locale;I)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    return-object v4
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/ao;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/dialogs/aq;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v1, v2, p2}, Lcom/yelp/android/ui/dialogs/aq;-><init>(Ljava/util/Locale;Ljava/util/Locale;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 167
    invoke-virtual {p0}, Lcom/yelp/android/ui/dialogs/ao;->notifyDataSetChanged()V

    .line 168
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 172
    if-nez p2, :cond_0

    .line 173
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090012

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 175
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 177
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setCompoundDrawablePadding(I)V

    .line 179
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 182
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 183
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/dialogs/ao;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/dialogs/ap;

    .line 184
    iget v2, v1, Lcom/yelp/android/ui/dialogs/ap;->b:I

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 185
    iget-object v2, v1, Lcom/yelp/android/ui/dialogs/ap;->a:Ljava/util/Locale;

    iget-object v1, v1, Lcom/yelp/android/ui/dialogs/ap;->a:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    return-object p2
.end method
