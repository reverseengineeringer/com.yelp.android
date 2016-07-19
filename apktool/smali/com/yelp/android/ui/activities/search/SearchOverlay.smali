.class public Lcom/yelp/android/ui/activities/search/SearchOverlay;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "SearchOverlay.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/search/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/search/SearchOverlay$7;,
        Lcom/yelp/android/ui/activities/search/SearchOverlay$OverlayTermsBroadcastReceiver;,
        Lcom/yelp/android/ui/activities/search/SearchOverlay$a;,
        Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;
    }
.end annotation


# instance fields
.field a:Landroid/view/View$OnFocusChangeListener;

.field b:Landroid/widget/TextView$OnEditorActionListener;

.field c:Landroid/view/View$OnClickListener;

.field d:Landroid/text/TextWatcher;

.field e:Landroid/widget/AdapterView$OnItemClickListener;

.field f:Landroid/widget/AdapterView$OnItemClickListener;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/ListView;

.field private j:Lcom/yelp/android/ui/activities/search/SearchOverlay$a;

.field private k:Lcom/yelp/android/ui/activities/search/a;

.field private l:Lcom/yelp/android/ui/activities/search/b;

.field private m:Lcom/yelp/android/ui/activities/search/c;

.field private n:Lcom/yelp/android/ui/util/aj;

.field private o:Lcom/yelp/android/ui/util/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/af",
            "<",
            "Lcom/yelp/android/serializable/RichSearchSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/yelp/android/ui/util/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/y",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/yelp/android/analytics/iris/IriSource;

.field private t:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

.field private u:Landroid/widget/ImageView;

.field private final v:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 558
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$14;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay$14;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a:Landroid/view/View$OnFocusChangeListener;

    .line 620
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$15;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay$15;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b:Landroid/widget/TextView$OnEditorActionListener;

    .line 635
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay$2;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->c:Landroid/view/View$OnClickListener;

    .line 644
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay$3;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d:Landroid/text/TextWatcher;

    .line 684
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay$4;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->e:Landroid/widget/AdapterView$OnItemClickListener;

    .line 822
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay$5;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->f:Landroid/widget/AdapterView$OnItemClickListener;

    .line 937
    new-instance v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay$6;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->v:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;

    .line 956
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Lcom/yelp/android/analytics/iris/IriSource;)Landroid/content/Intent;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;",
            "Lcom/yelp/android/analytics/iris/IriSource;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 175
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-class v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    move-object v8, p5

    invoke-static/range {v0 .. v8}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType;Ljava/util/EnumSet;Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Lcom/yelp/android/analytics/iris/IriSource;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType;Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/yelp/android/appdata/BusinessContributionType;",
            "Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 126
    const-class v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType;Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Ljava/util/EnumSet;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType;Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Ljava/util/EnumSet;)Landroid/content/Intent;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/yelp/android/appdata/BusinessContributionType;",
            "Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 196
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p7

    move-object v7, p6

    invoke-static/range {v0 .. v8}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType;Ljava/util/EnumSet;Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Lcom/yelp/android/analytics/iris/IriSource;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType;Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Z)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/yelp/android/appdata/BusinessContributionType;",
            "Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 150
    const-class v0, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType;Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Ljava/util/EnumSet;)Landroid/content/Intent;

    move-result-object v0

    .line 160
    const-string/jumbo v1, "extra.focus_on_location_box"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLcom/yelp/android/appdata/BusinessContributionType;Ljava/util/EnumSet;Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Lcom/yelp/android/analytics/iris/IriSource;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/yelp/android/appdata/BusinessContributionType;",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;",
            ">;",
            "Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;",
            "Lcom/yelp/android/analytics/iris/IriSource;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    const-class v1, Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 220
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 223
    const-string/jumbo v1, "extra.locations_keyword"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 224
    const-string/jumbo v1, "extra.search_text"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string/jumbo v1, "extra.location"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string/jumbo v1, "extra.kickoff_search"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    if-nez p4, :cond_0

    .line 228
    const-string/jumbo v1, "extra.contribution.type"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 230
    :cond_0
    const-string/jumbo v1, "extra.display_features"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 231
    const-string/jumbo v1, "extra.suggestion.type"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 232
    const-string/jumbo v1, "extra.source"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 233
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->u:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Lcom/yelp/android/ui/activities/search/SearchOverlay$a;)Lcom/yelp/android/ui/activities/search/SearchOverlay$a;
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->j:Lcom/yelp/android/ui/activities/search/SearchOverlay$a;

    return-object p1
.end method

.method public static a(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 237
    const-string/jumbo v0, "extra.contribution"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 238
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->p:Lcom/yelp/android/ui/util/y;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/y;->filter(Ljava/lang/CharSequence;)V

    .line 556
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 482
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d()Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-direct {p0, v0, v1, p1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 491
    const-string/jumbo v0, "yelp sucks"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    const-string/jumbo v0, "The club can\'t even handle me right now."

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 493
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/search/SearchOverlay$13;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay$13;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.search_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.location"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.search.launch_method"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->setResult(ILandroid/content/Intent;)V

    .line 508
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->finish()V

    .line 509
    const v0, 0x7f040017

    const v1, 0x7f040018

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->overridePendingTransition(II)V

    .line 511
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.yelp.android.search"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    const-string/jumbo v1, "extra.search_text"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    const-string/jumbo v1, "extra.location"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 515
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->sendBroadcast(Landroid/content/Intent;)V

    .line 517
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->t:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    sget-object v1, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;->SEARCH:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.kickoff_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p0, p3}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/b;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->l:Lcom/yelp/android/ui/activities/search/b;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    :cond_0
    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Ljava/util/List;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->r:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 537
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.yelp.android.search_text_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    const-string/jumbo v1, "extra.search_text"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    const-string/jumbo v1, "extra.location"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->sendBroadcast(Landroid/content/Intent;)V

    .line 541
    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/a;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->k:Lcom/yelp/android/ui/activities/search/a;

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->e()V

    return-void
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/c;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->m:Lcom/yelp/android/ui/activities/search/c;

    return-object v0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/aj;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->n:Lcom/yelp/android/ui/util/aj;

    return-object v0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->i:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/af;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->o:Lcom/yelp/android/ui/util/af;

    return-object v0
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/SearchOverlay$a;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->j:Lcom/yelp/android/ui/activities/search/SearchOverlay$a;

    return-object v0
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->u:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic o(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->t:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    return-object v0
.end method

.method static synthetic p(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->v:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;

    return-object v0
.end method

.method static synthetic q(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/util/y;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->p:Lcom/yelp/android/ui/util/y;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 342
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v7

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/yelp/android/database/g;->b()Lcom/yelp/android/database/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/database/d;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->r:Ljava/util/List;

    .line 344
    new-instance v0, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/aj;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->n:Lcom/yelp/android/ui/util/aj;

    .line 347
    new-instance v0, Lcom/yelp/android/ui/activities/search/b;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/search/b;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->l:Lcom/yelp/android/ui/activities/search/b;

    .line 348
    new-instance v0, Lcom/yelp/android/ui/activities/search/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->r:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/search/a;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->k:Lcom/yelp/android/ui/activities/search/a;

    .line 349
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->n:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f070511

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->k:Lcom/yelp/android/ui/activities/search/a;

    invoke-static {v2}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 351
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->n:Lcom/yelp/android/ui/util/aj;

    const v1, 0x7f0704d6

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->l:Lcom/yelp/android/ui/activities/search/b;

    invoke-static {v2}, Lcom/yelp/android/ui/util/aj$c;->a(Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 355
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.suggestion.type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->t:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    .line 357
    new-instance v0, Lcom/yelp/android/ui/util/af;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->r:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->t:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    new-instance v6, Lcom/yelp/android/ui/activities/search/SearchOverlay$11;

    invoke-direct {v6, p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay$11;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/util/af;-><init>(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Lcom/yelp/android/ui/util/SuggestionFilter$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->o:Lcom/yelp/android/ui/util/af;

    .line 387
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/yelp/android/database/g;->c()Lcom/yelp/android/database/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 390
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->q:Ljava/util/ArrayList;

    .line 392
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "extra.locations_keyword"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 394
    new-instance v0, Lcom/yelp/android/ui/activities/search/c;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/search/c;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->m:Lcom/yelp/android/ui/activities/search/c;

    .line 395
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->m:Lcom/yelp/android/ui/activities/search/c;

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->l()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v4}, Lcom/yelp/android/ui/activities/search/c;->a(Ljava/util/List;Z)V

    .line 397
    new-instance v0, Lcom/yelp/android/ui/util/y;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->q:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->t:Lcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;

    new-instance v6, Lcom/yelp/android/ui/activities/search/SearchOverlay$12;

    invoke-direct {v6, p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay$12;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    move-object v2, v1

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/util/y;-><init>(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLcom/yelp/android/ui/util/SuggestionFilter$SuggestionType;Lcom/yelp/android/ui/util/SuggestionFilter$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->p:Lcom/yelp/android/ui/util/y;

    .line 418
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Ljava/lang/CharSequence;)V

    .line 420
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.contribution.type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/BusinessContributionType;

    .line 423
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BusinessContributionType;->isMedia()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 424
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->o:Lcom/yelp/android/ui/util/af;

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->AddPhotoPage:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/af;->a(Lcom/yelp/android/analytics/iris/IriSource;)V

    .line 425
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->p:Lcom/yelp/android/ui/util/y;

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->AddPhotoPage:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/y;->a(Lcom/yelp/android/analytics/iris/IriSource;)V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->REVIEW:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v0, v1, :cond_2

    .line 427
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->o:Lcom/yelp/android/ui/util/af;

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->AddReviewPage:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/af;->a(Lcom/yelp/android/analytics/iris/IriSource;)V

    .line 428
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->p:Lcom/yelp/android/ui/util/y;

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->AddReviewPage:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/y;->a(Lcom/yelp/android/analytics/iris/IriSource;)V

    goto :goto_0

    .line 429
    :cond_2
    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v0, v1, :cond_0

    .line 430
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->o:Lcom/yelp/android/ui/util/af;

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->CheckInPage:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/af;->a(Lcom/yelp/android/analytics/iris/IriSource;)V

    .line 431
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->p:Lcom/yelp/android/ui/util/y;

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->CheckInPage:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/y;->a(Lcom/yelp/android/analytics/iris/IriSource;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/eo;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 912
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->s:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-static {p0, v0, v1, p2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;Lcom/yelp/android/analytics/iris/IriSource;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 915
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->startActivity(Landroid/content/Intent;)V

    .line 916
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 467
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 468
    const-string/jumbo v1, "extra.search_text"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    const-string/jumbo v1, "extra.location"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->setResult(ILandroid/content/Intent;)V

    .line 471
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onBackPressed()V

    .line 473
    const v0, 0x7f040017

    const v1, 0x7f040018

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->overridePendingTransition(II)V

    .line 474
    return-void
.end method

.method public c()Landroid/content/Context;
    .locals 0

    .prologue
    .line 920
    return-object p0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 907
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->SearchOverlay:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 854
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 855
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 856
    return-object v1
.end method

.method public n()[D
    .locals 1

    .prologue
    .line 925
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 930
    const/16 v0, 0x3e8

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 450
    const/16 v0, 0x411

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 451
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->setResult(I)V

    .line 452
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->finish()V

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b()V

    .line 445
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 242
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 244
    const v0, 0x7f040017

    const v1, 0x7f040018

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->overridePendingTransition(II)V

    .line 245
    const v0, 0x7f030052

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->setContentView(I)V

    .line 247
    const v0, 0x7f0f0343

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/search/SearchOverlay$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay$1;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/analytics/iris/IriSource;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->s:Lcom/yelp/android/analytics/iris/IriSource;

    .line 257
    const v0, 0x7f0f058e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->i:Landroid/widget/ListView;

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->i:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->e:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->i:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 261
    const v0, 0x7f0f058d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    .line 262
    const v0, 0x7f0f058f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    .line 263
    const v0, 0x7f0f0266

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 265
    new-instance v1, Lcom/yelp/android/ui/activities/search/SearchOverlay$8;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay$8;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    if-nez p1, :cond_1

    .line 276
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.search_text"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.location"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra.display_features"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EnumSet;

    .line 286
    if-eqz v0, :cond_2

    sget-object v1, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;->NAME:Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 288
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 289
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 294
    :goto_1
    if-eqz v0, :cond_3

    sget-object v1, Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;->LOCATION:Lcom/yelp/android/ui/activities/search/SearchOverlay$SearchDisplayFeatures;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 296
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 297
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->b:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 298
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/activities/search/SearchOverlay$9;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay$9;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 313
    :goto_2
    const v0, 0x7f0f00c2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a()V

    .line 316
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.focus_on_location_box"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 317
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 322
    :goto_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/yelp/android/ui/activities/search/SearchOverlay$10;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay$10;-><init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 333
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v0

    const-string/jumbo v1, "PLATFORM_DIALOG"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;

    .line 336
    if-eqz v0, :cond_0

    .line 337
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->v:Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment;->a(Lcom/yelp/android/ui/dialogs/PlatformSearchDialogFragment$a;)V

    .line 339
    :cond_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    const-string/jumbo v1, "extra.search_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    const-string/jumbo v1, "extra.location"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 291
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_1

    .line 310
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_2

    .line 319
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_3
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 437
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 438
    const-string/jumbo v0, "extra.search_text"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string/jumbo v0, "extra.location"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->h:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    .line 460
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 461
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d()Ljava/lang/String;

    move-result-object v1

    .line 462
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSearchRequested()Z

    move-result v0

    return v0
.end method
