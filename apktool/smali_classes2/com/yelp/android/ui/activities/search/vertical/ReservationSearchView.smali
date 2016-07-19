.class public Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;
.super Landroid/widget/LinearLayout;
.source "ReservationSearchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$a;

.field private e:Ljava/text/DateFormat;

.field private f:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->a()V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;)Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->d:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$a;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->setOrientation(I)V

    .line 66
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "EEE MMM dd"

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 68
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->e:Ljava/text/DateFormat;

    .line 69
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->f:Ljava/text/DateFormat;

    .line 71
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0301dc

    invoke-static {v0, v1, p0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 72
    const v0, 0x7f0f057e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->a:Landroid/widget/Button;

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->a:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$1;-><init>(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f0f057f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->b:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->b:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$2;-><init>(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v0, 0x7f0f0580

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->c:Landroid/widget/Button;

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->c:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$3;-><init>(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Calendar;)V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->e:Ljava/text/DateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method public b(Ljava/util/Calendar;)V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->f:Ljava/text/DateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public setReservationPartyPickerText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->a:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method

.method public setWidgetListener(Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$a;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView;->d:Lcom/yelp/android/ui/activities/search/vertical/ReservationSearchView$a;

    .line 50
    return-void
.end method
