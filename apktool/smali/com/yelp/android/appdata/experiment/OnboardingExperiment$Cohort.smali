.class public final enum Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;
.super Ljava/lang/Enum;
.source "OnboardingExperiment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/appdata/experiment/OnboardingExperiment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Cohort"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

.field public static final enum animated_onboarding:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

.field public static final enum animated_onboarding_arrows:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

.field public static final enum animated_onboarding_dots:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

.field public static final enum animated_onboarding_dots_and_arrows:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

.field public static final enum illustration_splash:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

.field public static final enum status_quo_illustration_guide:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    const-string/jumbo v1, "status_quo_illustration_guide"

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->status_quo_illustration_guide:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    .line 20
    new-instance v0, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    const-string/jumbo v1, "illustration_splash"

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->illustration_splash:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    .line 21
    new-instance v0, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    const-string/jumbo v1, "animated_onboarding"

    invoke-direct {v0, v1, v5}, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->animated_onboarding:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    .line 22
    new-instance v0, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    const-string/jumbo v1, "animated_onboarding_dots"

    invoke-direct {v0, v1, v6}, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->animated_onboarding_dots:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    .line 23
    new-instance v0, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    const-string/jumbo v1, "animated_onboarding_arrows"

    invoke-direct {v0, v1, v7}, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->animated_onboarding_arrows:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    .line 24
    new-instance v0, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    const-string/jumbo v1, "animated_onboarding_dots_and_arrows"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->animated_onboarding_dots_and_arrows:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->status_quo_illustration_guide:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->illustration_splash:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->animated_onboarding:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->animated_onboarding_dots:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->animated_onboarding_arrows:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->animated_onboarding_dots_and_arrows:Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->$VALUES:[Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/experiment/OnboardingExperiment$Cohort;

    return-object v0
.end method
